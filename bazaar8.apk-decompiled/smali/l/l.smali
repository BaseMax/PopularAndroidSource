.class public final Ll/l;
.super Ll/c$a;
.source "DefaultCallAdapterFactory.java"


# static fields
.field public static final a:Ll/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ll/l;

    invoke-direct {v0}, Ll/l;-><init>()V

    sput-object v0, Ll/l;->a:Ll/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ll/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ll/F;)Ll/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ll/F;",
            ")",
            "Ll/c<",
            "**>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ll/c$a;->a(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    const-class p3, Ll/b;

    if-eq p2, p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {p1}, Ll/H;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 3
    new-instance p2, Ll/k;

    invoke-direct {p2, p0, p1}, Ll/k;-><init>(Ll/l;Ljava/lang/reflect/Type;)V

    return-object p2
.end method
