package com.bumptech.glide.load.b;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

public abstract class j {
    public static final j ALL = new j() {
        public final boolean decodeCachedData() {
            return true;
        }

        public final boolean decodeCachedResource() {
            return true;
        }

        public final boolean isDataCacheable(DataSource dataSource) {
            return dataSource == DataSource.REMOTE;
        }

        public final boolean isResourceCacheable(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }
    };
    public static final j AUTOMATIC = new j() {
        public final boolean decodeCachedData() {
            return true;
        }

        public final boolean decodeCachedResource() {
            return true;
        }

        public final boolean isDataCacheable(DataSource dataSource) {
            return dataSource == DataSource.REMOTE;
        }

        public final boolean isResourceCacheable(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return ((z && dataSource == DataSource.DATA_DISK_CACHE) || dataSource == DataSource.LOCAL) && encodeStrategy == EncodeStrategy.TRANSFORMED;
        }
    };
    public static final j DATA = new j() {
        public final boolean decodeCachedData() {
            return true;
        }

        public final boolean decodeCachedResource() {
            return false;
        }

        public final boolean isResourceCacheable(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }

        public final boolean isDataCacheable(DataSource dataSource) {
            return (dataSource == DataSource.DATA_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }
    };
    public static final j NONE = new j() {
        public final boolean decodeCachedData() {
            return false;
        }

        public final boolean decodeCachedResource() {
            return false;
        }

        public final boolean isDataCacheable(DataSource dataSource) {
            return false;
        }

        public final boolean isResourceCacheable(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }
    };
    public static final j RESOURCE = new j() {
        public final boolean decodeCachedData() {
            return false;
        }

        public final boolean decodeCachedResource() {
            return true;
        }

        public final boolean isDataCacheable(DataSource dataSource) {
            return false;
        }

        public final boolean isResourceCacheable(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }
    };

    public abstract boolean decodeCachedData();

    public abstract boolean decodeCachedResource();

    public abstract boolean isDataCacheable(DataSource dataSource);

    public abstract boolean isResourceCacheable(boolean z, DataSource dataSource, EncodeStrategy encodeStrategy);
}
