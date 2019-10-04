.class public final Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;
.super Ljava/lang/Object;
.source "VideoDownloadQualityInfo.kt"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel$CREATOR;
    }
.end annotation


# static fields
.field public static final CREATOR:Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel$CREATOR;


# instance fields
.field public final id:Ljava/lang/String;

.field public final quality:Ljava/lang/String;

.field public final size:J

.field public final url:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel$CREATOR;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel$CREATOR;-><init>(Lh/f/b/f;)V

    sput-object v0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->CREATOR:Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel$CREATOR;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    const-string v0, "parcel"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_2

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v1, p0

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    .line 8
    :cond_1
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0

    .line 9
    :cond_2
    invoke-static {}, Lh/f/b/j;->a()V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quality"

    invoke-static {p4, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p5, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->id:Ljava/lang/String;

    iput-wide p2, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->size:J

    iput-object p4, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->quality:Ljava/lang/String;

    iput-object p5, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->url:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuality()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->quality:Ljava/lang/String;

    return-object v0
.end method

.method public final getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->size:J

    return-wide v0
.end method

.method public final getUrl()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->url:Ljava/util/List;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    const-string p2, "parcel"

    invoke-static {p1, p2}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 3
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->quality:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/farsitel/bazaar/common/model/VideoDownloadItemModel;->url:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return-void
.end method
