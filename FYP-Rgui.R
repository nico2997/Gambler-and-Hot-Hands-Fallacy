#Left and Right bias between goalkeeper and kicker test
# L is the probability of choosing left 
# R is the probability of choosing right

# two sided Ho: L likely to occur as R   
# two sided H1: L not likely to occur as R

#Kicker 
binom.test(312,600,p=0.5, alternative=c("two.sided"))
#p-value = 0.3478 , not significant so we don't reject Ho

#Goalkeeper
binom.test(315,600,p=0.5, alternative=c("two.sided"))
#p-value = 0.2364 , not significant so we don't reject Ho


#CORRECT PREDICTION 
# p is the probability of choosing opposite direction

# one sided Ho: p<=0.5  
#           H1: p>0.5

# two sided Ho: p equals 0.5   
# two sided H1: p not equals 0.5

binom.test(138,226,p=0.5, alternative=c("two.sided")) 
#significant pvalue 0.001071 < 5%(alpha) so reject Ho

binom.test(138,226,p=0.5, alternative=c("greater
#significant pvalue 0.0005355 < 5%(alpha) so reject Ho

#
binom.test(24,33,p=0.5, alternative=c("two.sided")) 
#not significant pvalue 0.01353 < 5%(alpha) so reject Ho

# 
binom.test(24,33,p=0.5, alternative=c("greater")) 
#significant pvalue 0.006765 < 5%(alpha) so reject Ho

#
binom.test(3,3,p=0.5, alternative=c("two.sided")) 
#p-value 0.25 > 5%(alpha), we not reject Ho

binom.test(3,3,p=0.5, alternative=c("greater")) 
#p-value 0.125 > 5%(alpha), we not reject Ho



#INCORRECT PREDICTION
# p is the probability of choosing opposite direction

# one sided Ho: p>=0.5 for 1 streak  
#           H1: p<0.5  for 1 streak  

# one sided Ho: p<=0.5 for 2,3 streaks  
#           H1: p>0.5  for 2,3 streaks

# two sided Ho: p equals 0.5 
#           H1: p not equals 0.5

binom.test(52,110,p=0.5, alternative=c("two.sided")) 
#p-value 0.6338> 5%(alpha),not significant so we not reject Ho

binom.test(52,110,p=0.5, alternative=c("less")) 
#p-value 0.3169> 5%(alpha), not significant we not reject Ho
#
binom.test(19,36,p=0.5, alternative=c("two.sided")) 
#p-value 0.8679> 5%(alpha), we not reject Ho

binom.test(19,36,p=0.5, alternative=c("greater"))  
#p-value 0.434> 10%(alpha), we not reject Ho
#
binom.test(2,3,p=0.5, alternative=c("two.sided")) 
binom.test(2,3,p=0.5, alternative=c("greater")) 


#Fisher test for CORRECT prediction
#x1 is gambler fallacy, x2 is hot outcome

#Ho: x1 and x2 are independent
#H1: x1 and x2 are dependent

one_streak= matrix(c(82 ,56, 49, 39),nrow=2)
fisher.test(one_streak) # pvalue 0.5838>5%(alpha) so we dont reject Ho

two_streak= matrix(c(14 ,10, 4, 6),nrow=2)
fisher.test(two_streak) # pvalue 0.4569>5%(alpha) so we dont reject Ho

#Fisher test for INCORRECT prediction
#x1 is gambler fallacy, x2 is hot outcome

#Ho: x1 and x2 are independent
#H1: x1 and x2 are dependent

IC_one_streak= matrix(c(46 ,34, 52, 35),nrow=2)
fisher.test(IC_one_streak) # pvalue 0.8751>5%(alpha) so we dont reject Ho

IC_two_streak= matrix(c(10 ,9, 10, 7),nrow=2)
fisher.test(IC_two_streak) # pvalue 0.7486>5%(alpha) so we dont reject Ho

