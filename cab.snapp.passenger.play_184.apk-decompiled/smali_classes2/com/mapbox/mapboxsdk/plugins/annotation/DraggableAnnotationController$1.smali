.class Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;-><init>(Lcom/mapbox/mapboxsdk/maps/MapView;Lcom/mapbox/mapboxsdk/maps/MapboxMap;Lcom/mapbox/android/b/a;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;

.field final synthetic val$androidGesturesManager:Lcom/mapbox/android/b/a;


# direct methods
.method constructor <init>(Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;Lcom/mapbox/android/b/a;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$1;->this$0:Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;

    iput-object p2, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$1;->val$androidGesturesManager:Lcom/mapbox/android/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 51
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$1;->val$androidGesturesManager:Lcom/mapbox/android/b/a;

    invoke-virtual {p1, p2}, Lcom/mapbox/android/b/a;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 53
    iget-object p1, p0, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController$1;->this$0:Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;

    invoke-static {p1}, Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;->access$100(Lcom/mapbox/mapboxsdk/plugins/annotation/DraggableAnnotationController;)Lcom/mapbox/mapboxsdk/plugins/annotation/Annotation;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
