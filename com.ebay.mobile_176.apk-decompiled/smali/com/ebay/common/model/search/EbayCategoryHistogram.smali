.class public final Lcom/ebay/common/model/search/EbayCategoryHistogram;
.super Ljava/lang/Object;
.source "EbayCategoryHistogram.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;,
        Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;,
        Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

.field public final categories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 319
    new-instance v0, Lcom/ebay/common/model/search/EbayCategoryHistogram$1;

    invoke-direct {v0}, Lcom/ebay/common/model/search/EbayCategoryHistogram$1;-><init>()V

    sput-object v0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 30
    invoke-direct {p0, p1}, Lcom/ebay/common/model/search/EbayCategoryHistogram;->readParent(Landroid/os/Parcel;)Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 31
    :cond_0
    iput-object v1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 34
    new-instance v0, Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    .line 22
    iput-object p1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    return-void
.end method

.method private computeBreadcrumb(J)V
    .locals 10

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    .line 114
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    move-wide v4, v1

    :goto_0
    if-ge v3, v0, :cond_3

    cmp-long v6, v4, v1

    if-nez v6, :cond_3

    .line 117
    iget-object v6, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    .line 118
    iget-wide v7, v6, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->id:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_0

    .line 120
    iget-wide v4, v6, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->parentId:J

    goto :goto_2

    .line 124
    :cond_0
    iget-object v6, v6, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    .line 126
    iget-wide v8, v7, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    cmp-long v8, v8, p1

    if-nez v8, :cond_1

    .line 127
    iget-wide v4, v7, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->parentId:J

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 132
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    .line 134
    iget-wide v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->id:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 136
    new-instance p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    iget-object v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->name:Ljava/lang/String;

    iget-wide v1, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->id:J

    invoke-direct {p1, v0, v1, v2}, Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;-><init>(Ljava/lang/String;J)V

    iput-object p1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    :cond_5
    return-void
.end method

.method private readChild(Landroid/os/Parcel;Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;",
            ">(",
            "Landroid/os/Parcel;",
            "TT;)TT;"
        }
    .end annotation

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->count:I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->parentId:J

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->level:I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->isLeaf:Z

    return-object p2
.end method

.method private readParent(Landroid/os/Parcel;)Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;
    .locals 4

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 213
    new-instance v3, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    invoke-direct {v3}, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;-><init>()V

    invoke-direct {p0, p1, v3}, Lcom/ebay/common/model/search/EbayCategoryHistogram;->readChild(Landroid/os/Parcel;Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 214
    :cond_0
    new-instance v0, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    invoke-direct {v0, v1}, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;-><init>(Ljava/util/ArrayList;)V

    invoke-direct {p0, p1, v0}, Lcom/ebay/common/model/search/EbayCategoryHistogram;->readChild(Landroid/os/Parcel;Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    move-result-object p1

    check-cast p1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    return-object p1
.end method

.method private writeChild(Landroid/os/Parcel;Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)V
    .locals 2

    .line 219
    iget-wide v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 220
    iget-object v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->count:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 222
    iget-wide v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->parentId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 223
    iget v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-boolean p2, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->isLeaf:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method private writeParent(Landroid/os/Parcel;Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;)V
    .locals 3

    .line 201
    iget-object v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 202
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 204
    iget-object v2, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    invoke-direct {p0, p1, v2}, Lcom/ebay/common/model/search/EbayCategoryHistogram;->writeChild(Landroid/os/Parcel;Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/model/search/EbayCategoryHistogram;->writeChild(Landroid/os/Parcel;Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBreadCrumb()Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    return-object v0
.end method

.method public getCategory(J)Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;
    .locals 4

    .line 144
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    .line 146
    iget-wide v2, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLeafCategory(J)Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;
    .locals 5

    .line 160
    iget-object v0, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    .line 162
    iget-wide v2, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->id:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_1

    iget-boolean v2, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->isLeaf:Z

    if-eqz v2, :cond_1

    return-object v1

    .line 165
    :cond_1
    iget-object v1, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    .line 167
    iget-wide v3, v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->id:J

    cmp-long v3, v3, p1

    if-nez v3, :cond_2

    iget-boolean v3, v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->isLeaf:Z

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public reconstructWithTwoLevels(J)V
    .locals 7

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/ebay/common/model/search/EbayCategoryHistogram;->computeBreadcrumb(J)V

    .line 60
    invoke-virtual {p0, p1, p2}, Lcom/ebay/common/model/search/EbayCategoryHistogram;->getLeafCategory(J)Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 66
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    new-instance v0, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    invoke-direct {v0, p1}, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;-><init>(Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-gt p1, p2, :cond_1

    return-void

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    const/4 v0, 0x0

    .line 76
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 78
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    iget v1, v1, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->level:I

    .line 79
    sget v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->UNINITIALIZED_LEVEL:I

    if-eq v1, v2, :cond_2

    if-le v1, v0, :cond_2

    move v0, v1

    goto :goto_0

    .line 83
    :cond_3
    iget-object p1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    sub-int/2addr v0, p2

    .line 87
    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 89
    invoke-interface {p1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    .line 90
    iget v1, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->level:I

    sget v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;->UNINITIALIZED_LEVEL:I

    if-eq v1, v2, :cond_5

    iget v1, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->level:I

    if-ge v1, v0, :cond_5

    .line 91
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    .line 94
    :cond_5
    iget-object v1, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    .line 96
    iget-wide v3, v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->id:J

    iget-wide v5, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->parentId:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_6

    .line 98
    iget-object v1, v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;->children:Ljava/util/ArrayList;

    new-instance v2, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;

    invoke-direct {v2, p2}, Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;-><init>(Lcom/ebay/common/model/search/EbayCategoryHistogram$Category;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-interface {p1}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_7
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 183
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->categories:Ljava/util/ArrayList;

    .line 184
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 187
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;

    invoke-direct {p0, p1, v3}, Lcom/ebay/common/model/search/EbayCategoryHistogram;->writeParent(Landroid/os/Parcel;Lcom/ebay/common/model/search/EbayCategoryHistogram$ParentCategory;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    .line 191
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    iget-object p2, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;->displayName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lcom/ebay/common/model/search/EbayCategoryHistogram;->breadCrumb:Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;

    iget-wide v0, p2, Lcom/ebay/common/model/search/EbayCategoryHistogram$BreadCrumb;->categoryId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_1

    .line 196
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return-void
.end method
