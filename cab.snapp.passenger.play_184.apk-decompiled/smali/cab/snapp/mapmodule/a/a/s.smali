.class public final Lcab/snapp/mapmodule/a/a/s;
.super Lcab/snapp/mapmodule/a/a/m;
.source "SourceFile"


# instance fields
.field public latitudes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public longitudes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public padding:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;I)V"
        }
    .end annotation

    const/16 v0, 0x3f5

    .line 14
    invoke-direct {p0, v0, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 15
    iput-object p2, p0, Lcab/snapp/mapmodule/a/a/s;->latitudes:Ljava/util/List;

    .line 16
    iput-object p3, p0, Lcab/snapp/mapmodule/a/a/s;->longitudes:Ljava/util/List;

    .line 17
    iput p4, p0, Lcab/snapp/mapmodule/a/a/s;->padding:I

    return-void
.end method
