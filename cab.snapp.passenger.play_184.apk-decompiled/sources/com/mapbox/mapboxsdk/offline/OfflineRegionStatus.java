package com.mapbox.mapboxsdk.offline;

public class OfflineRegionStatus {
    private final long completedResourceCount;
    private final long completedResourceSize;
    private final long completedTileCount;
    private final long completedTileSize;
    private int downloadState;
    private final long requiredResourceCount;
    private final boolean requiredResourceCountIsPrecise;

    private OfflineRegionStatus(int i, long j, long j2, long j3, long j4, long j5, boolean z) {
        this.downloadState = i;
        this.completedResourceCount = j;
        this.completedResourceSize = j2;
        this.completedTileCount = j3;
        this.completedTileSize = j4;
        this.requiredResourceCount = j5;
        this.requiredResourceCountIsPrecise = z;
    }

    public boolean isComplete() {
        return this.completedResourceCount >= this.requiredResourceCount;
    }

    public int getDownloadState() {
        return this.downloadState;
    }

    public long getCompletedResourceCount() {
        return this.completedResourceCount;
    }

    public long getCompletedResourceSize() {
        return this.completedResourceSize;
    }

    public long getCompletedTileCount() {
        return this.completedTileCount;
    }

    public long getCompletedTileSize() {
        return this.completedTileSize;
    }

    public long getRequiredResourceCount() {
        return this.requiredResourceCount;
    }

    public boolean isRequiredResourceCountPrecise() {
        return this.requiredResourceCountIsPrecise;
    }
}
