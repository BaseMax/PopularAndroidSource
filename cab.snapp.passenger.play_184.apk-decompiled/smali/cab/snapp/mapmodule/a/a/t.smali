.class public final Lcab/snapp/mapmodule/a/a/t;
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

.field public paddingBottom:I

.field public paddingLeft:I

.field public paddingRight:I

.field public paddingTop:I


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/util/List;IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;IIII)V"
        }
    .end annotation

    const/16 v0, 0x403

    .line 17
    invoke-direct {p0, v0, p1}, Lcab/snapp/mapmodule/a/a/m;-><init>(II)V

    .line 18
    iput-object p2, p0, Lcab/snapp/mapmodule/a/a/t;->latitudes:Ljava/util/List;

    .line 19
    iput-object p3, p0, Lcab/snapp/mapmodule/a/a/t;->longitudes:Ljava/util/List;

    .line 20
    iput p4, p0, Lcab/snapp/mapmodule/a/a/t;->paddingLeft:I

    .line 21
    iput p5, p0, Lcab/snapp/mapmodule/a/a/t;->paddingTop:I

    .line 22
    iput p6, p0, Lcab/snapp/mapmodule/a/a/t;->paddingRight:I

    .line 23
    iput p7, p0, Lcab/snapp/mapmodule/a/a/t;->paddingBottom:I

    return-void
.end method
