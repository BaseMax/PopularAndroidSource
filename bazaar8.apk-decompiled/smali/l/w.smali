.class public final Ll/w;
.super Ll/j$a;
.source "OptionalConverterFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/w$a;
    }
.end annotation


# static fields
.field public static final a:Ll/j$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/w;

    invoke-direct {v0}, Ll/w;-><init>()V

    sput-object v0, Ll/w;->a:Ll/j$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ll/F;)Ll/j;
    .locals 2
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
    invoke-static {p1}, Ll/j$a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Optional;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 2
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-static {v0, p1}, Ll/j$a;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 3
    invoke-virtual {p3, p1, p2}, Ll/F;->b(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Ll/j;

    move-result-object p1

    .line 4
    new-instance p2, Ll/w$a;

    invoke-direct {p2, p1}, Ll/w$a;-><init>(Ll/j;)V

    return-object p2
.end method
