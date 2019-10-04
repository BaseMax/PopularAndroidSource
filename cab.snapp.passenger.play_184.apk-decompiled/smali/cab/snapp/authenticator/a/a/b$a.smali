.class public final Lcab/snapp/authenticator/a/a/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/authenticator/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Lcab/snapp/authenticator/a/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcab/snapp/authenticator/a/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final accountModule(Lcab/snapp/authenticator/a/b/a;)Lcab/snapp/authenticator/a/a/b$a;
    .locals 0

    .line 47
    invoke-static {p1}, Ldagger/a/d;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcab/snapp/authenticator/a/b/a;

    iput-object p1, p0, Lcab/snapp/authenticator/a/a/b$a;->a:Lcab/snapp/authenticator/a/b/a;

    return-object p0
.end method

.method public final build()Lcab/snapp/authenticator/a/a/a;
    .locals 3

    .line 40
    iget-object v0, p0, Lcab/snapp/authenticator/a/a/b$a;->a:Lcab/snapp/authenticator/a/b/a;

    if-eqz v0, :cond_0

    .line 43
    new-instance v0, Lcab/snapp/authenticator/a/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcab/snapp/authenticator/a/a/b;-><init>(Lcab/snapp/authenticator/a/a/b$a;B)V

    return-object v0

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcab/snapp/authenticator/a/b/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
