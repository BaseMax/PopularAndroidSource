.class public final Ll/a;
.super Ll/j$a;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/a$d;,
        Ll/a$a;,
        Ll/a$c;,
        Ll/a$b;,
        Ll/a$e;,
        Ll/a$f;
    }
.end annotation


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ll/j$a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Ll/a;->a:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ll/F;)Ll/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ll/F;",
            ")",
            "Ll/j<",
            "Lj/S;",
            "*>;"
        }
    .end annotation

    .line 1
    const-class p3, Lj/S;

    if-ne p1, p3, :cond_1

    .line 2
    const-class p1, Ll/b/u;

    invoke-static {p2, p1}, Ll/H;->a([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ll/a$c;->a:Ll/a$c;

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Ll/a$a;->a:Ll/a$a;

    :goto_0
    return-object p1

    .line 5
    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    .line 6
    sget-object p1, Ll/a$f;->a:Ll/a$f;

    return-object p1

    .line 7
    :cond_2
    iget-boolean p2, p0, Ll/a;->a:Z

    if-eqz p2, :cond_3

    .line 8
    :try_start_0
    const-class p2, Lh/h;

    if-ne p1, p2, :cond_3

    .line 9
    sget-object p1, Ll/a$e;->a:Ll/a$e;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Ll/a;->a:Z

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Ll/F;)Ll/j;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ll/F;",
            ")",
            "Ll/j<",
            "*",
            "Lj/O;",
            ">;"
        }
    .end annotation

    .line 11
    const-class p2, Lj/O;

    invoke-static {p1}, Ll/H;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    sget-object p1, Ll/a$b;->a:Ll/a$b;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
