#!/usr/bin/env python3
#%%
import os
import sys
import pandas as pd
import argparse
import geopandas as gpd

#%%
if __name__ == '__main__':

    parser = argparse.ArgumentParser(description='Read shp file and output csv')
    parser.add_argument('--input-filepath', '-if',  help='Path to shp file')
    parser.add_argument('--delimiter','-d', default=',', help='Delimiter for output file')
    parser.add_argument('--crs', '-c', default=None, help='If co-ordinates are not in metric then convert co-ordinates to metric and parse them correctly (e.g. "urn:ogc:def:crs:OGC:1.3:CRS84")')

    args = parser.parse_args()

    #%%
    # Load the shapefile
    gdf = gpd.read_file(args.input_filepath)

    if args.crs:
        gdf = gdf.to_crs(args.crs)

    gdf['geometry'] = gdf['geometry'].to_wkt()
    gdf.to_csv(sys.stdout, sep=args.delimiter, index=False)

    #%%