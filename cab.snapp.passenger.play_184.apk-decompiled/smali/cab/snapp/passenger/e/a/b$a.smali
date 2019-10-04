.class final Lcab/snapp/passenger/e/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/e/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:Lcab/snapp/passenger/e/b/a;

.field b:Landroid/app/Application;

.field c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 418
    invoke-direct {p0}, Lcab/snapp/passenger/e/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic appModule(Lcab/snapp/passenger/e/b/a;)Lcab/snapp/passenger/e/a/a$a;
    .locals 0

    .line 418
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/e/a/b$a;->appModule(Lcab/snapp/passenger/e/b/a;)Lcab/snapp/passenger/e/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final appModule(Lcab/snapp/passenger/e/b/a;)Lcab/snapp/passenger/e/a/b$a;
    .locals 0

    .line 453
    invoke-static {p1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/passenger/e/b/a;

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$a;->a:Lcab/snapp/passenger/e/b/a;

    return-object p0
.end method

.method public final bridge synthetic authenticatorActivityClass(Ljava/lang/Class;)Lcab/snapp/passenger/e/a/a$a;
    .locals 0

    .line 418
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/e/a/b$a;->authenticatorActivityClass(Ljava/lang/Class;)Lcab/snapp/passenger/e/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final authenticatorActivityClass(Ljava/lang/Class;)Lcab/snapp/passenger/e/a/b$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcab/snapp/passenger/e/a/b$a;"
        }
    .end annotation

    .line 447
    invoke-static {p1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$a;->c:Ljava/lang/Class;

    return-object p0
.end method

.method public final build()Lcab/snapp/passenger/e/a/a;
    .locals 4

    .line 427
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$a;->a:Lcab/snapp/passenger/e/b/a;

    if-nez v0, :cond_0

    .line 428
    new-instance v0, Lcab/snapp/passenger/e/b/a;

    invoke-direct {v0}, Lcab/snapp/passenger/e/b/a;-><init>()V

    iput-object v0, p0, Lcab/snapp/passenger/e/a/b$a;->a:Lcab/snapp/passenger/e/b/a;

    .line 430
    :cond_0
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$a;->b:Landroid/app/Application;

    const-string v1, " must be set"

    if-eqz v0, :cond_2

    .line 433
    iget-object v0, p0, Lcab/snapp/passenger/e/a/b$a;->c:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 436
    new-instance v0, Lcab/snapp/passenger/e/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcab/snapp/passenger/e/a/b;-><init>(Lcab/snapp/passenger/e/a/b$a;B)V

    return-object v0

    .line 434
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 431
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Landroid/app/Application;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final bridge synthetic context(Landroid/app/Application;)Lcab/snapp/passenger/e/a/a$a;
    .locals 0

    .line 418
    invoke-virtual {p0, p1}, Lcab/snapp/passenger/e/a/b$a;->context(Landroid/app/Application;)Lcab/snapp/passenger/e/a/b$a;

    move-result-object p1

    return-object p1
.end method

.method public final context(Landroid/app/Application;)Lcab/snapp/passenger/e/a/b$a;
    .locals 0

    .line 441
    invoke-static {p1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcab/snapp/passenger/e/a/b$a;->b:Landroid/app/Application;

    return-object p0
.end method
