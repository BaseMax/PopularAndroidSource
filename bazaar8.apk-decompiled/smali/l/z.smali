.class public abstract Ll/z;
.super Ljava/lang/Object;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll/z$a;,
        Ll/z$g;,
        Ll/z$l;,
        Ll/z$f;,
        Ll/z$c;,
        Ll/z$b;,
        Ll/z$e;,
        Ll/z$j;,
        Ll/z$k;,
        Ll/z$i;,
        Ll/z$h;,
        Ll/z$d;,
        Ll/z$m;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ll/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll/z<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll/y;

    invoke-direct {v0, p0}, Ll/y;-><init>(Ll/z;)V

    return-object v0
.end method

.method public abstract a(Ll/B;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll/B;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final b()Ll/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ll/z<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ll/x;

    invoke-direct {v0, p0}, Ll/x;-><init>(Ll/z;)V

    return-object v0
.end method
