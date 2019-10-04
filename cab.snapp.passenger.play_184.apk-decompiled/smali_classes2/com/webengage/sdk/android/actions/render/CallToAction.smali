.class public Lcom/webengage/sdk/android/actions/render/CallToAction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;
    }
.end annotation


# instance fields
.field private action:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private isNative:Z

.field private isPrime:Z

.field private text:Ljava/lang/String;

.field private type:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->id:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->text:Ljava/lang/String;

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->action:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->isPrime:Z

    iput-object v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->type:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    iput-boolean v1, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->isNative:Z

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->text:Ljava/lang/String;

    iput-object p3, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->action:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->isPrime:Z

    iput-boolean p5, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->isNative:Z

    iget-object p1, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->action:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->valueFromString(Ljava/lang/String;)Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->type:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    :cond_0
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->action:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFullActionUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;
    .locals 1

    iget-object v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->type:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    return-object v0
.end method

.method public isNative()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->isNative:Z

    return v0
.end method

.method public isPrimeAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->isPrime:Z

    return v0
.end method

.method public setAction(Ljava/lang/String;Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;Landroid/content/Context;)V
    .locals 4

    const-string v0, "webengage://"

    const-string v1, "/"

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "UTF-8"

    invoke-static {p1, v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->action:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->LAUNCH_ACTIVITY:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    invoke-virtual {v0}, Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->action:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->type:Lcom/webengage/sdk/android/actions/render/CallToAction$TYPE;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/webengage/sdk/android/actions/render/CallToAction;->text:Ljava/lang/String;

    return-void
.end method
