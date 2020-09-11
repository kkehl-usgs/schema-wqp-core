create table if not exists ${WQP_SCHEMA_NAME}.tl_2019_us_county_geopkg
(objectid                         serial
,statefp                          character varying(2)
,countyfp                         character varying(3)
,countyns                         character varying(8)
,geoid                            character varying(5)
,name                             character varying(100)
,namelsad                         character varying(100)
,lsad                             character varying(2)
,classfp                          character varying(2)
,mtfcc                            character varying(5)
,csafp                            character varying(3)
,cbsafp                           character varying(5)
,metdivfp                         character varying(5)
,funcstat                         character varying(1)
,aland                            double precision
,awater                           double precision
,intptlat                         character varying(11)
,intptlon                         character varying(12)
,wkb_geometry                     geometry(MultiPolygon,4269)
,constraint tl_2019_us_county_geopkg_pkey
  primary key (objectid)
)
with (fillfactor = 100);
