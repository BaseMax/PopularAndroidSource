.class public final Li/a/za;
.super Ljava/lang/Object;
.source "JobSupport.kt"


# static fields
.field public static final a:Li/a/c/v;

.field public static final b:Li/a/Z;

.field public static final c:Li/a/Z;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Li/a/c/v;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Li/a/c/v;-><init>(Ljava/lang/String;)V

    sput-object v0, Li/a/za;->a:Li/a/c/v;

    .line 2
    new-instance v0, Li/a/Z;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Li/a/Z;-><init>(Z)V

    sput-object v0, Li/a/za;->b:Li/a/Z;

    .line 3
    new-instance v0, Li/a/Z;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Li/a/Z;-><init>(Z)V

    sput-object v0, Li/a/za;->c:Li/a/Z;

    return-void
.end method

.method public static final synthetic a()Li/a/Z;
    .locals 1

    .line 1
    sget-object v0, Li/a/za;->c:Li/a/Z;

    return-object v0
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    instance-of v0, p0, Li/a/ma;

    if-eqz v0, :cond_0

    new-instance v0, Li/a/na;

    check-cast p0, Li/a/ma;

    invoke-direct {v0, p0}, Li/a/na;-><init>(Li/a/ma;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method public static final synthetic b()Li/a/Z;
    .locals 1

    .line 1
    sget-object v0, Li/a/za;->b:Li/a/Z;

    return-object v0
.end method

.method public static final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2
    instance-of v0, p0, Li/a/na;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Li/a/na;

    if-eqz v0, :cond_1

    iget-object v0, v0, Li/a/na;->a:Li/a/ma;

    if-eqz v0, :cond_1

    move-object p0, v0

    :cond_1
    return-object p0
.end method

.method public static final synthetic c()Li/a/c/v;
    .locals 1

    .line 1
    sget-object v0, Li/a/za;->a:Li/a/c/v;

    return-object v0
.end method
