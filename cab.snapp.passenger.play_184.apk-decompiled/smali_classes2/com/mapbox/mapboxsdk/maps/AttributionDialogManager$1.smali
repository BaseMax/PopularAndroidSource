.class Lcom/mapbox/mapboxsdk/maps/AttributionDialogManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/maps/AttributionDialogManager;->showTelemetryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapbox/mapboxsdk/maps/AttributionDialogManager;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/maps/AttributionDialogManager;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/maps/AttributionDialogManager$1;->this$0:Lcom/mapbox/mapboxsdk/maps/AttributionDialogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 114
    invoke-static {}, Lcom/mapbox/mapboxsdk/Mapbox;->getTelemetry()Lcom/mapbox/mapboxsdk/maps/TelemetryDefinition;

    move-result-object p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 116
    invoke-interface {p2, v0}, Lcom/mapbox/mapboxsdk/maps/TelemetryDefinition;->setUserTelemetryRequestState(Z)V

    .line 118
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
