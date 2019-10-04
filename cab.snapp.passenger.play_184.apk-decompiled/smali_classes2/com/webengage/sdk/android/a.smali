.class public abstract Lcom/webengage/sdk/android/a;
.super Lcom/webengage/sdk/android/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/a$a;
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/webengage/sdk/android/h;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/webengage/sdk/android/i;->a(Landroid/content/Context;)Lcom/webengage/sdk/android/i;

    move-result-object p1

    return-object p1
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method protected abstract a(Ljava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method protected abstract b(Ljava/lang/Object;)V
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/a;->a(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/webengage/sdk/android/a;->b(Ljava/lang/Object;)V

    return-void
.end method

.method protected c(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/af;->b:Lcom/webengage/sdk/android/af;

    iget-object v1, p0, Lcom/webengage/sdk/android/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/webengage/sdk/android/a$a;

    invoke-direct {v0, p0, p1}, Lcom/webengage/sdk/android/a$a;-><init>(Lcom/webengage/sdk/android/a;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/webengage/sdk/android/utils/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 2

    sget-object v0, Lcom/webengage/sdk/android/af;->g:Lcom/webengage/sdk/android/af;

    iget-object v1, p0, Lcom/webengage/sdk/android/a;->a:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method

.method protected e(Ljava/lang/Object;)V
    .locals 3

    sget-object v0, Lcom/webengage/sdk/android/af;->j:Lcom/webengage/sdk/android/af;

    new-instance v1, Lcom/webengage/sdk/android/ac;

    invoke-virtual {p0}, Lcom/webengage/sdk/android/a;->i()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/webengage/sdk/android/ac;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/webengage/sdk/android/a;->a:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/webengage/sdk/android/n;->a(Lcom/webengage/sdk/android/af;Ljava/lang/Object;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    iget-object v0, p0, Lcom/webengage/sdk/android/a;->a:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/webengage/sdk/android/WebEngage;->startService(Landroid/content/Intent;Landroid/content/Context;)V

    return-void
.end method
