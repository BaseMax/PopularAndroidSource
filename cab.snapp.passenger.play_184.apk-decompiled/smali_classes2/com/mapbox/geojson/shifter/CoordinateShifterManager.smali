.class public final Lcom/mapbox/geojson/shifter/CoordinateShifterManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT:Lcom/mapbox/geojson/shifter/CoordinateShifter;

.field private static volatile coordinateShifter:Lcom/mapbox/geojson/shifter/CoordinateShifter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/mapbox/geojson/shifter/CoordinateShifterManager$1;

    invoke-direct {v0}, Lcom/mapbox/geojson/shifter/CoordinateShifterManager$1;-><init>()V

    .line 39
    sput-object v0, Lcom/mapbox/geojson/shifter/CoordinateShifterManager;->DEFAULT:Lcom/mapbox/geojson/shifter/CoordinateShifter;

    sput-object v0, Lcom/mapbox/geojson/shifter/CoordinateShifterManager;->coordinateShifter:Lcom/mapbox/geojson/shifter/CoordinateShifter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCoordinateShifter()Lcom/mapbox/geojson/shifter/CoordinateShifter;
    .locals 1

    .line 48
    sget-object v0, Lcom/mapbox/geojson/shifter/CoordinateShifterManager;->coordinateShifter:Lcom/mapbox/geojson/shifter/CoordinateShifter;

    return-object v0
.end method

.method public static setCoordinateShifter(Lcom/mapbox/geojson/shifter/CoordinateShifter;)V
    .locals 0

    if-nez p0, :cond_0

    .line 59
    sget-object p0, Lcom/mapbox/geojson/shifter/CoordinateShifterManager;->DEFAULT:Lcom/mapbox/geojson/shifter/CoordinateShifter;

    :cond_0
    sput-object p0, Lcom/mapbox/geojson/shifter/CoordinateShifterManager;->coordinateShifter:Lcom/mapbox/geojson/shifter/CoordinateShifter;

    return-void
.end method
