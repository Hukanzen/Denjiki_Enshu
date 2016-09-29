$pi=3.14;
$epz=8.85*10**-12;

# 3-3
my $s=100*(10**-2)**2;
my $d=5*10**-2;
print "3-3 ";
&heiko_doutai($s,$d);

# 3-4
my $r=(10*10**-2)/2;
print "3-4 ";
&dotai_kyu($r);

# 3-5
my $r=6370*10**3;
print "3-5 ";
&dotai_kyu($r);

# 3-6-a
my @a;
$a[0]=0.1*10**-6;
$a[1]=0.2*10**-6;
$a[2]=0.3*10**-6;
$a[3]=0.4*10**-6;
print "3-6-a ";
&gousei_seiden_1(@a);

# 3-6-b
my $b=0.5*10**-6;;
print "3-6-b ";
&gousei_seiden_2($b);

# 3-6-c
my $c=100*10**-12;
print "3-6-c ";
&gousei_seiden_3($c);

# 3-7

# 3-8

# 3-9-1
my $a=10*10**-2;
my $b=20*10**-2;
print "3-9-1 ";
&doshin_kyu($a,$b);

# 3-9-2
my $a=5*10**-2;
my $b=15*10**-2;
print "3-9-2 ";
&doshin_kyu($a,$b);

# 3-10-1
my $a=10*10**-2;
my $b=20*10**-2;
print "3-10-1 ";
&doshin_tsu($a,$b);

# 3-10-2
my $a=5*10**-2;
my $b=15*10**-2;
print "3-10-2 ";
&doshin_tsu($a,$b);

# 3-11
my $c=2*10**-6;
my $v=1000;
print "3-11 ";
&enegy($c,$v);

# 3-12
my $v=500;
my $w=1;
print "3-12 ";
&enegy_capacitor($v,$w);

# 3-14
my $d=1*10**-2;
my $v=500;
print "3-14 ";
&power_heiko_doutai_ban($d,$v);

sub heiko_doutai{
	my ($s,$d)=@_;
	#平行平板導体 p43
	$c=$epz*$s/$d;
	print $c."[F]\n";
}

sub dotai_kyu{
	my ($a)=@_;
	#導体球 p43
	$c=4*$pi*$epz*$a;
	print $c."\n";
}

sub gousei_seiden_1{
	my @a=@_;
	$c=1/((1/($a[0]+$a[1]))+(1/($a[2]+$a[3])));
	print $c."\n";
}

sub gousei_seiden_2{
	my ($b)=@_;
	$c=(1/((1/$b)+(1/$b)))*2;
	print $c."\n";
}

sub gousei_seiden_3{
	my ($c)=@_;
	$c=1/((1/$c)+(1/($c+1/((1/$c)*2))));
	print $c."\n";
}

sub doshin_kyu{
	my ($a,$b)=@_;
	#同心球
	my $c=4*$pi*$epz/(1/$a-1/$b);
	print $c."\n";
}

sub doshin_tsu{
	my ($a,$b)=@_;
#	my $pi=3.14;
#	my $epz=8.85*10**-12;
	#同心円筒
	my $c=2*$pi*$epz/log($b/$a);
	print $c."\n";
}

sub enegy{
	my ($c,$v)=@_;
	#コンデンサに充電 p58

	#$q=$c*$v;
	$w=1/2*$c*$v**2;
	print $w."[J]\n";
}

sub enegy_capacitor{
	my ($v,$w)=@_;
	#コンデンサの静電容量 p58 逆算
	$c=$w*2/($v**2);
	print $c."[F]\n";

}

sub power_heiko_doutai_ban{
	my ($d,$v)=@_;
	# p52
	$f=1/2*$v**2*($epz)/$d**2;
	print $f."[Pa]\n";
}
