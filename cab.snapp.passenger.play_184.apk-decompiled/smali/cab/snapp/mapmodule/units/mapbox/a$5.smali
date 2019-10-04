.class final Lcab/snapp/mapmodule/units/mapbox/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/mapmodule/units/mapbox/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

.field final synthetic b:Lcab/snapp/mapmodule/units/mapbox/a;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/units/mapbox/a;Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcab/snapp/mapmodule/units/mapbox/a$5;->b:Lcab/snapp/mapmodule/units/mapbox/a;

    iput-object p2, p0, Lcab/snapp/mapmodule/units/mapbox/a$5;->a:Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 823
    iget-object v0, p0, Lcab/snapp/mapmodule/units/mapbox/a$5;->a:Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/style/layers/PropertyFactory;->iconOpacity(Ljava/lang/Float;)Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mapbox/mapboxsdk/style/layers/SymbolLayer;->setProperties([Lcom/mapbox/mapboxsdk/style/layers/PropertyValue;)V

    return-void
.end method
