.class Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;
.super Landroid/view/View$BaseSavedState;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/snappuikit/SnappFloatingActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProgressSavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:F

.field b:F

.field c:F

.field d:I

.field e:I

.field f:I

.field g:I

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field m:Z

.field n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1590
    new-instance v0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState$1;

    invoke-direct {v0}, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState$1;-><init>()V

    sput-object v0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1553
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1554
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->a:F

    .line 1555
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->b:F

    .line 1556
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->h:Z

    .line 1557
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->c:F

    .line 1558
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->d:I

    .line 1559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->e:I

    .line 1560
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->f:I

    .line 1561
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->g:I

    .line 1562
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->i:Z

    .line 1563
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->j:Z

    .line 1564
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->k:Z

    .line 1565
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->l:Z

    .line 1566
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    :goto_5
    iput-boolean v0, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->m:Z

    .line 1567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_6

    :cond_6
    const/4 v1, 0x0

    :goto_6
    iput-boolean v1, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->n:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0

    .line 1529
    invoke-direct {p0, p1}, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    .line 1548
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1573
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1574
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->a:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1575
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->b:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1576
    iget-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->h:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1577
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->c:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1578
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1579
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1580
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1581
    iget p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1582
    iget-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->i:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1583
    iget-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->j:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1584
    iget-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->k:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1585
    iget-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->l:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1586
    iget-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->m:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1587
    iget-boolean p2, p0, Lcab/snapp/snappuikit/SnappFloatingActionButton$ProgressSavedState;->n:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
