.class public Lc/b/a/c/c/c$a;
.super Ljava/lang/Object;
.source "ByteArrayLoader.java"

# interfaces
.implements Lc/b/a/c/c/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/c/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/c/c/v<",
        "[B",
        "Ljava/nio/ByteBuffer;",
        ">;"
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
.method public a(Lc/b/a/c/c/y;)Lc/b/a/c/c/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/c/c/y;",
            ")",
            "Lc/b/a/c/c/u<",
            "[B",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lc/b/a/c/c/c;

    new-instance v0, Lc/b/a/c/c/b;

    invoke-direct {v0, p0}, Lc/b/a/c/c/b;-><init>(Lc/b/a/c/c/c$a;)V

    invoke-direct {p1, v0}, Lc/b/a/c/c/c;-><init>(Lc/b/a/c/c/c$b;)V

    return-object p1
.end method
