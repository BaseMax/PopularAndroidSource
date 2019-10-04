.class Lcom/webengage/sdk/android/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/webengage/sdk/android/ae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/webengage/sdk/android/ae<",
        "Lcom/webengage/sdk/android/Analytics;",
        ">;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>(I[Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/webengage/sdk/android/g;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    iput p1, p0, Lcom/webengage/sdk/android/g;->a:I

    iput-object p2, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/webengage/sdk/android/Analytics;)V
    .locals 5

    :try_start_0
    iget v0, p0, Lcom/webengage/sdk/android/g;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_9

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->installed(Landroid/content/Intent;)V

    goto/16 :goto_3

    :cond_1
    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->setScreenData(Ljava/util/Map;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_3
    move-object v0, v2

    :goto_0
    iget-object v1, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-le v1, v3, :cond_4

    iget-object v1, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v1, v1, v3

    move-object v2, v1

    check-cast v2, Ljava/util/Map;

    :cond_4
    invoke-virtual {p1, v0, v2}, Lcom/webengage/sdk/android/Analytics;->screenNavigated(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_5
    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->stop(Landroid/app/Activity;)V

    :cond_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v0, v0, v4

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/webengage/sdk/android/Analytics;->start(Landroid/app/Activity;)V

    :cond_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    array-length v0, v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_a
    move-object v0, v2

    :goto_1
    iget-object v4, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    array-length v4, v4

    if-le v4, v3, :cond_b

    iget-object v4, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v3, v4, v3

    check-cast v3, Ljava/util/Map;

    goto :goto_2

    :cond_b
    move-object v3, v2

    :goto_2
    iget-object v4, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    array-length v4, v4

    if-le v4, v1, :cond_c

    iget-object v2, p0, Lcom/webengage/sdk/android/g;->b:[Ljava/lang/Object;

    aget-object v1, v2, v1

    move-object v2, v1

    check-cast v2, Lcom/webengage/sdk/android/Analytics$Options;

    :cond_c
    invoke-virtual {p1, v0, v3, v2}, Lcom/webengage/sdk/android/Analytics;->track(Ljava/lang/String;Ljava/util/Map;Lcom/webengage/sdk/android/Analytics$Options;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_d
    :goto_3
    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Some error occurred while executing queued task of Analytics: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WebEngage"

    invoke-static {v0, p1}, Lcom/webengage/sdk/android/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
