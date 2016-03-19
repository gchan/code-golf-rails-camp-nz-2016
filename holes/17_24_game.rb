def s(d)s=[]
d.permutation.to_a.uniq.product(%i(+ - * /).repeated_permutation(3).to_a,['((%dr %s %dr) %s %dr) %s %dr','(%dr %s (%dr %s %dr)) %s %dr','(%dr %s %dr) %s (%dr %s %dr)','%dr %s ((%dr %s %dr) %s %dr)','%dr %s (%dr %s (%dr %s %dr))']){|(a,b,c,d),(x,y,z),e|t=e%[a,x,b,y,c,z,d]
s<<t.delete("r") if eval(t)==24 rescue next}
s.sort
end

puts $<.map{|l|s=s(l.split.map(&:to_i));s.any?? s:"-"}
