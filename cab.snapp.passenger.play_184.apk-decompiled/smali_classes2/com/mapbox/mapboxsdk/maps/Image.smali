.class Lcom/mapbox/mapboxsdk/maps/Image;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final buffer:[B

.field private final height:I

.field private final name:Ljava/lang/String;

.field private final pixelRatio:F

.field private final sdf:Z

.field private final width:I


# direct methods
.method public constructor <init>([BFLjava/lang/String;IIZ)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/Image;->buffer:[B

    .line 16
    iput p2, p0, Lcom/mapbox/mapboxsdk/maps/Image;->pixelRatio:F

    .line 17
    iput-object p3, p0, Lcom/mapbox/mapboxsdk/maps/Image;->name:Ljava/lang/String;

    .line 18
    iput p4, p0, Lcom/mapbox/mapboxsdk/maps/Image;->width:I

    .line 19
    iput p5, p0, Lcom/mapbox/mapboxsdk/maps/Image;->height:I

    .line 20
    iput-boolean p6, p0, Lcom/mapbox/mapboxsdk/maps/Image;->sdf:Z

    return-void
.end method
