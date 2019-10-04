.class public final Ll/a/a/a;
.super Ll/j$a;
.source "GsonConverterFactory.java"


# instance fields
.field public final a:Lc/e/d/j;


# direct methods
.method public constructor <init>(Lc/e/d/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll/j$a;-><init>()V

    .line 2
    iput-object p1, p0, Ll/a/a/a;->a:Lc/e/d/j;

    return-void
.end method

.method public static a()Ll/a/a/a;
    .locals 1

    .line 1
    new-instance v0, Lc/e/d/j;

    invoke-direct {v0}, Lc/e/d/j;-><init>()V

    invoke-static {v0}, Ll/a/a/a;->a(Lc/e/d/j;)Ll/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lc/e/d/j;)Ll/a/a/a;
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Ll/a/a/a;

    invoke-direct {v0, p0}, Ll/a/a/a;-><init>(Lc/e/d/j;)V

    return-object v0

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "gson == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 4
    iget-object p2, p0, Ll/a/a/a;->a:Lc/e/d/j;

    invoke-static {p1}, Lc/e/d/c/a;->a(Ljava/lang/reflect/Type;)Lc/e/d/c/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/e/d/j;->a(Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object p1

    .line 5
    new-instance p2, Ll/a/a/c;

    iget-object p3, p0, Ll/a/a/a;->a:Lc/e/d/j;

    invoke-direct {p2, p3, p1}, Ll/a/a/c;-><init>(Lc/e/d/j;Lc/e/d/x;)V

    return-object p2
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

    .line 6
    iget-object p2, p0, Ll/a/a/a;->a:Lc/e/d/j;

    invoke-static {p1}, Lc/e/d/c/a;->a(Ljava/lang/reflect/Type;)Lc/e/d/c/a;

    move-result-object p1

    invoke-virtual {p2, p1}, Lc/e/d/j;->a(Lc/e/d/c/a;)Lc/e/d/x;

    move-result-object p1

    .line 7
    new-instance p2, Ll/a/a/b;

    iget-object p3, p0, Ll/a/a/a;->a:Lc/e/d/j;

    invoke-direct {p2, p3, p1}, Ll/a/a/b;-><init>(Lc/e/d/j;Lc/e/d/x;)V

    return-object p2
.end method
