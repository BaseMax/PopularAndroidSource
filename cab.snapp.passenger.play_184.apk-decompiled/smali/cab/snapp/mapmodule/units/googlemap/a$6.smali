.class final Lcab/snapp/mapmodule/units/googlemap/a$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


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

.field final synthetic b:Lcab/snapp/mapmodule/a/a/l;

.field final synthetic c:Lcab/snapp/mapmodule/units/googlemap/a;


# direct methods
.method constructor <init>(Lcab/snapp/mapmodule/units/googlemap/a;Lcom/google/android/gms/maps/model/g;Lcab/snapp/mapmodule/a/a/l;)V
    .locals 0

    .line 780
    iput-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a$6;->c:Lcab/snapp/mapmodule/units/googlemap/a;

    iput-object p2, p0, Lcab/snapp/mapmodule/units/googlemap/a$6;->a:Lcom/google/android/gms/maps/model/g;

    iput-object p3, p0, Lcab/snapp/mapmodule/units/googlemap/a$6;->b:Lcab/snapp/mapmodule/a/a/l;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    .line 784
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 785
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a$6;->a:Lcom/google/android/gms/maps/model/g;

    invoke-virtual {p1}, Lcom/google/android/gms/maps/model/g;->remove()V

    .line 786
    iget-object p1, p0, Lcab/snapp/mapmodule/units/googlemap/a$6;->c:Lcab/snapp/mapmodule/units/googlemap/a;

    invoke-static {p1}, Lcab/snapp/mapmodule/units/googlemap/a;->d(Lcab/snapp/mapmodule/units/googlemap/a;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcab/snapp/mapmodule/units/googlemap/a$6;->b:Lcab/snapp/mapmodule/a/a/l;

    iget-object p2, p2, Lcab/snapp/mapmodule/a/a/l;->markerTag:Ljava/lang/String;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
