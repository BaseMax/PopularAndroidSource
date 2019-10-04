.class Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final animatorType:I

.field private final listener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;


# direct methods
.method constructor <init>(ILcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->animatorType:I

    .line 10
    iput-object p2, p0, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->listener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 31
    :cond_1
    check-cast p1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;

    .line 33
    iget v2, p0, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->animatorType:I

    iget v3, p1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->animatorType:I

    if-eq v2, v3, :cond_2

    return v1

    .line 36
    :cond_2
    iget-object v2, p0, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->listener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    iget-object p1, p1, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->listener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-nez p1, :cond_4

    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getAnimatorType()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->animatorType:I

    return v0
.end method

.method public getListener()Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->listener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 41
    iget v0, p0, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->animatorType:I

    mul-int/lit8 v0, v0, 0x1f

    .line 42
    iget-object v1, p0, Lcom/mapbox/mapboxsdk/location/AnimatorListenerHolder;->listener:Lcom/mapbox/mapboxsdk/location/MapboxAnimator$AnimationsValueChangeListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method
