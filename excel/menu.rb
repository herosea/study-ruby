#!/usr/bin/ruby
# encoding: UTF-8
require 'roo'
require 'open-uri'

s = Roo::Excel.new("menu.xls")
out = File.new('menu.sql', 'w')
s.default_sheet = s.sheets.first
id = 0;
#定义根节点
top = {'id' => 0, 'sex' => ''}
#因为多行可能 公用一级目录，故需要保存
level1 = top
for i in 1...s.last_row
  if s.cell(i, 1) then
  # 如果第一列有数据，那么第一列的上一级是根节点
    p = top
  elsif
  # 如果第一列没有数据，那么公用上一行的一级菜单
    p = level1
  end
  for j in 1...s.last_column
    id += 1
    name = s.cell(i ,j)
    if !name then
    #如果没有值，跳过
      next
    end
    cur = {'id' => id, 'pid' => p['id'], 'name' => name, 'sex' => '', 'keyword' => name + ' '  + p['sex'], 'leaf' => 1, 'sort' => id, 'valid' => 1}
    if name.include?"(" or name.include?"（" then
    #如果有性别说明
      names = name.split(/[\(（\)）]/)
      cur['name'] = names[0]
      cur['sex'] = names[1]
      cur['keyword'] = names[0] + ' ' + names[1]
    end
    if s.font(i ,j).bold? then
      #如果字体加粗，表示不是叶子节点
      cur['leaf'] = false
      p = cur
      if j == 1 then
        #如果第一列有值，那么level1变更
        level1 = p
      end
    end

    if cur['leaf'] == 1 then
      cur['imgUrl'] = 'http://img.tcloudapp.cn/xg/menu/' + URI::encode(cur['name']) + '.jpg'
      begin
        req = open(cur['imgUrl']).read
      rescue StandardError,Timeout::Error, SystemCallError, Errno::ECONNREFUSED
        cur['valid'] = 0
      end
    else
    #非叶子目录没有imgUrl
      cur['imgUrl'] = ''
    end
    sql = "INSERT INTO `item_center`.`menu` (`id`, `name`, `keyword`, `parent_id`, `leaf`, `img_url`, `sort`, `valid`) VALUES ( '" 
    sql = sql + cur['id'].to_s + "', '" + cur['name'] + "', '" + cur['keyword'] + "', '" + cur['pid'].to_s + "', '";
    sql = sql + cur['leaf'].to_s + "', '" + cur['imgUrl'] + "', '" + cur['sort'].to_s + "', '" + cur['valid'].to_s + "');"
    out.puts sql 
  end
end
