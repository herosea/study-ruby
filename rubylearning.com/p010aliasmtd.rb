# p010aliasmtd.rb
# alias new_name old_name
# When a method is aliased, the new name refers
# to a copy of the original methods's body

def oldmtd
  "old mehod"
end
alias newmtd oldmtd
def oldmtd
  "old improved method"
end
puts oldmtd
puts newmtd
