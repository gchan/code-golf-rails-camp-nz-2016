E=['((%dr %s %dr) %s %dr) %s %dr','(%dr %s (%dr %s %dr)) %s %dr','(%dr %s %dr) %s (%dr %s %dr)','%dr %s ((%dr %s %dr) %s %dr)','%dr %s (%dr %s (%dr %s %dr))']
O=%i(+ - * /).repeated_permutation(3).to_a
def s(d)
s=[]
p=d.permutation.to_a.uniq
p.product(O,E){|(a,b,c,d),(o1,o2,o3),e|
t=e%[a,o1,b,o2,c,o3,d]
v=eval(t) rescue next
s<<t.delete("r") if v==24}
s.sort
end

while l=gets do
s=s(l.split.map(&:to_i))
puts s.any?? s:"-"
end
