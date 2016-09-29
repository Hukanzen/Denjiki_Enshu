$pi=3.14;
$epz=8.85*10**-12;


# 4-2
$r=10*(10**-2)/2;
$d=1*10**-3;
$at=1*10**-3;
$sa=125*10**-12;
print "4-3 ";
&heiko_heiban_ep($r,$d,$at,$sa);

# 4-3
$c=250*10**-12;
$v=50*10**3;
$epr=4.2;
print "4-4 ";
&make_cpstor($c,$v,$epr);

#sub heiko_heiban_capasitor{
## 平行平板コンデンサの静電容量
#	my ($s,$d)=@_;
#	# p56
#	my $c=$epz*$s*$d;
#	return $c;
#}

sub heiko_heiban_ep{
	my ($r,$d,$at,$sa)=@_;
	# p56
	my $s=($r**2)*$pi;
	
	#($epz*$epr)*$s/$d-($epz)*$s/$d=$sa;
	#($epz*$epr)-($epz)=$sa*$d/$s;
	#$epr-1=$sa*$d/($s*$epz);
	my $epr=$sa*$d/($s*$epz)+1;

	print $epr."\n";
}

sub make_cpstor{
	my ($c,$v,$epr)=@_;
	my $d=50*10**3/(5*(10**3));
	$d=$d*10**-3; #mm -> m
	my $s=$c/($epz*$epr)*$d;
	
	print "電極間隔:".$d." 電極面積:".$s."\n";
}
