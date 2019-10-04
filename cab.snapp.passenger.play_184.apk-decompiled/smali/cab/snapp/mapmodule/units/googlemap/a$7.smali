.class final Lcab/snapp/mapmodule/units/googlemap/a$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/mapmodule/units/googlemap/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/model/g;

.field final synthetic b:Lcab/snapp/mapmodule/units/googlemap/a;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/units/googlemap/a;Lcom/google/android/gms/maps/model/g;)V
    .locals 0

    .line 806
    iput-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a$7;->b:Lcab/snapp/mapmodule/units/googlemap/a;

    iput-object p2, p0, Lcab/snapp/mapmodule/units/googlemap/a$7;->a:Lcom/google/android/gms/maps/model/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcab/snapp/mapmodule/units/googlemap/a$7;->a:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/g;->setAlpha(F)V

    return-void
.end method
