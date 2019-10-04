.class public Lc/b/a/c/c/C;
.super Ljava/lang/Object;
.source "UnitModelLoader.java"

# interfaces
.implements Lc/b/a/c/c/u;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/c/c/C$a;,
        Lc/b/a/c/c/C$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/u<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field public static final a:Lc/b/a/c/c/C;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/c/c/C<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lc/b/a/c/c/C;

    invoke-direct {v0}, Lc/b/a/c/c/C;-><init>()V

    sput-object v0, Lc/b/a/c/c/C;->a:Lc/b/a/c/c/C;

    return-void
.end method

.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lc/b/a/c/c/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lc/b/a/c/c/C<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lc/b/a/c/c/C;->a:Lc/b/a/c/c/C;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;IILc/b/a/c/f;)Lc/b/a/c/c/u$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lc/b/a/c/f;",
            ")",
            "Lc/b/a/c/c/u$a<",
            "TModel;>;"
        }
    .end annotation

    .line 2
    new-instance p2, Lc/b/a/c/c/u$a;

    new-instance p3, Lc/b/a/h/b;

    invoke-direct {p3, p1}, Lc/b/a/h/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Lc/b/a/c/c/C$b;

    invoke-direct {p4, p1}, Lc/b/a/c/c/C$b;-><init>(Ljava/lang/Object;)V

    invoke-direct {p2, p3, p4}, Lc/b/a/c/c/u$a;-><init>(Lc/b/a/c/c;Lc/b/a/c/a/d;)V

    return-object p2
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
