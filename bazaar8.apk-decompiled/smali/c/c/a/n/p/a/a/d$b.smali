.class public final Lc/c/a/n/p/a/a/d$b;
.super Ljava/lang/Object;
.source "LoginWithEmailFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/p/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lh/f/b/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/c/a/n/p/a/a/d$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;J)Lb/w/p;
    .locals 1

    const-string v0, "email"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/n/p/a/a/d$a;

    invoke-direct {v0, p1, p2, p3}, Lc/c/a/n/p/a/a/d$a;-><init>(Ljava/lang/String;J)V

    return-object v0
.end method