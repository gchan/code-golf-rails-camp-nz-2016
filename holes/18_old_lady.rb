A={fly:'',spider:"It wriggled and jiggled and tickled inside her.\n",bird:"How absurd to swallow a bird!\n",cat:"Imagine that, to swallow a cat!\n",dog:"What a hog, to swallow a dog!\n",goat:"Just opened her throat and swallowed a goat!\n",cow:"I don't know how she swallowed a cow!\n",horse:"She's dead, of course!\n"}
puts ((1..8).inject(''){|l,n|i=n-1
f=A.keys[i]
c=A.keys[0..i].reverse
l<<"I know an old lady who swallowed a #{f}.\n"
l<<A[f]
c.each_cons(2){|a1,a2|
a2='spider that wriggled and jiggled and tickled inside her'if a2==:spider
l<<"She swallowed the #{a1} to catch the #{a2}.\n"}
l<<"I don't know why she swallowed the fly. Perhaps she'll die.\n"
l<<"\n"})