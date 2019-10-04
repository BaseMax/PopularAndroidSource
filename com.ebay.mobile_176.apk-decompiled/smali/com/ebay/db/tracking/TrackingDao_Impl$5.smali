.class Lcom/ebay/db/tracking/TrackingDao_Impl$5;
.super Landroidx/room/SharedSQLiteStatement;
.source "TrackingDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ebay/db/tracking/TrackingDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;


# direct methods
.method constructor <init>(Lcom/ebay/db/tracking/TrackingDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/ebay/db/tracking/TrackingDao_Impl$5;->this$0:Lcom/ebay/db/tracking/TrackingDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "DELETE FROM trackingentity"

    return-object v0
.end method
