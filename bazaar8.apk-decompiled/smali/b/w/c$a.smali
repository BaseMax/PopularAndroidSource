.class public Lb/w/c$a;
.super Lb/w/o;
.source "ActivityNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/w/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public j:Landroid/content/Intent;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lb/w/K;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/w/K<",
            "+",
            "Lb/w/c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lb/w/o;-><init>(Lb/w/K;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/ComponentName;)Lb/w/c$a;
    .locals 1

    .line 16
    iget-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    .line 18
    :cond_0
    iget-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p0
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lb/w/o;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lb/w/N;->ActivityNavigator:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3
    sget v0, Lb/w/N;->ActivityNavigator_targetPackage:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "${applicationId}"

    .line 5
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    invoke-virtual {p0, v0}, Lb/w/c$a;->d(Ljava/lang/String;)Lb/w/c$a;

    .line 7
    sget v0, Lb/w/N;->ActivityNavigator_android_name:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_1
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lb/w/c$a;->a(Landroid/content/ComponentName;)Lb/w/c$a;

    .line 11
    :cond_2
    sget p1, Lb/w/N;->ActivityNavigator_action:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/w/c$a;->b(Ljava/lang/String;)Lb/w/c$a;

    .line 12
    sget p1, Lb/w/N;->ActivityNavigator_data:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 13
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/w/c$a;->b(Landroid/net/Uri;)Lb/w/c$a;

    .line 14
    :cond_3
    sget p1, Lb/w/N;->ActivityNavigator_dataPattern:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/w/c$a;->c(Ljava/lang/String;)Lb/w/c$a;

    .line 15
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public final b(Landroid/net/Uri;)Lb/w/c$a;
    .locals 1

    .line 4
    iget-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    .line 6
    :cond_0
    iget-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lb/w/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lb/w/c$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/w/c$a;->k:Ljava/lang/String;

    return-object p0
.end method

.method public final d(Ljava/lang/String;)Lb/w/c$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    .line 3
    :cond_0
    iget-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/c$a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Landroid/content/Intent;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/c$a;->j:Landroid/content/Intent;

    return-object v0
.end method
