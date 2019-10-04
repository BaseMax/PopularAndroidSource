.class final Lcab/snapp/mapmodule/views/MapBoxView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mapbox/mapboxsdk/maps/Style$OnStyleLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/mapmodule/views/MapBoxView;->a(Lcom/mapbox/mapboxsdk/maps/MapboxMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcab/snapp/mapmodule/views/MapBoxView;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/views/MapBoxView;)V
    .locals 0

    .line 167
    iput-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$1;->a:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onStyleLoaded(Lcom/mapbox/mapboxsdk/maps/Style;)V
    .locals 0

    .line 171
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$1;->a:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-static {p1}, Lcab/snapp/mapmodule/views/MapBoxView;->c(Lcab/snapp/mapmodule/views/MapBoxView;)V

    .line 172
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$1;->a:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-static {p1}, Lcab/snapp/mapmodule/views/MapBoxView;->d(Lcab/snapp/mapmodule/views/MapBoxView;)V

    .line 173
    iget-object p1, p0, Lcab/snapp/mapmodule/views/MapBoxView$1;->a:Lcab/snapp/mapmodule/views/MapBoxView;

    invoke-static {p1}, Lcab/snapp/mapmodule/views/MapBoxView;->e(Lcab/snapp/mapmodule/views/MapBoxView;)V

    return-void
.end method
