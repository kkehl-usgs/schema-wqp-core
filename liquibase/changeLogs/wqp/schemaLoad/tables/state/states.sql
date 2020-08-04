create unlogged table if not exists ${WQP_SCHEMA_NAME}.states
(state                          character varying (26)
,state_abrv                     character varying (2)
,fipsst                         character varying (2)
,totpop                         numeric
,pctsmpld                       numeric
,landsqmi                       numeric
,poppsqmi                       numeric
,female                         numeric
,rural                          numeric
,onfarms                        numeric
,infamily                       numeric
,alone                          numeric
,groupqtr                       numeric
,popinhhs                       numeric
,pctfemal                       numeric
,pctgq                          numeric
,white                          numeric
,black                          numeric
,asianpi                        numeric
,amindian                       numeric
,hispanic                       numeric
,pctwhite                       numeric
,pctblack                       numeric
,pctasian                       numeric
,pctamind                       numeric
,pcthisp                        numeric
,pct0_4                         numeric
,pct5_9                         numeric
,pct10_13                       numeric
,pct14_17                       numeric
,pct18_24                       numeric
,pct25_34                       numeric
,pct35_44                       numeric
,pct45_54                       numeric
,pct55_59                       numeric
,pct60_64                       numeric
,pct65_74                       numeric
,pct75_84                       numeric
,pct85_up                       numeric
,pct0_19                        numeric
,pct20_39                       numeric
,pct40_64                       numeric
,pct65_up                       numeric
,age0_4                         numeric
,age5_9                         numeric
,age10_13                       numeric
,age14_17                       numeric
,age18_24                       numeric
,age25_34                       numeric
,age35_44                       numeric
,age45_54                       numeric
,age55_59                       numeric
,age60_64                       numeric
,age65_74                       numeric
,age75_84                       numeric
,age85_up                       numeric
,age0_19                        numeric
,age20_39                       numeric
,age40_64                       numeric
,age65_up                       numeric
,age0_17                        numeric
,age18_44                       numeric
,age45_64                       numeric
,medage                         numeric
,tothhs                         numeric
,avghhsz                        numeric
,hhs1ov65                       numeric
,hhs1                           numeric
,hhs2                           numeric
,hhs3_4                         numeric
,hhs5_up                        numeric
,pcthhs1                        numeric
,pcthhs2                        numeric
,pcthhs3_                       numeric
,pcthhs5_                       numeric
,families                       numeric
,mcfams                         numeric
,mcwchild                       numeric
,femhead                        numeric
,femheadc                       numeric
,nonfhhs                        numeric
,pctfamhh                       numeric
,pctmcfam                       numeric
,pctmcwch                       numeric
,pctfemhe                       numeric
,pctfemhc                       numeric
,pctnfhhs                       numeric
,hhi0_10                        numeric
,hhi10_15                       numeric
,hhi15_25                       numeric
,hhi25_35                       numeric
,hhi35_50                       numeric
,hhi50_75                       numeric
,hhi75_99                       numeric
,hhi100up                       numeric
,phi0_10                        numeric
,phi10_15                       numeric
,phi15_25                       numeric
,phi25_35                       numeric
,phi35_50                       numeric
,phi50_75                       numeric
,phi75_99                       numeric
,phi100up                       numeric
,phi0_15                        numeric
,phi0_25                        numeric
,phi0_35                        numeric
,phi0_50                        numeric
,phi0_75                        numeric
,phi0_99                        numeric
,medhhinc                       numeric
,avghhinc                       numeric
,geom                           geometry
)
with (fillfactor = 100)
;