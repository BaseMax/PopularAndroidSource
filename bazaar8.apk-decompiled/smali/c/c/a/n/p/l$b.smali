.class public final Lc/c/a/n/p/l$b;
.super Ljava/lang/Object;
.source "RegisterFragmentDirections.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/n/p/l;
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
    invoke-direct {p0}, Lc/c/a/n/p/l$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lb/w/p;
    .locals 2

    .line 2
    new-instance v0, Lb/w/a;

    const v1, 0x7f0a006d

    invoke-direct {v0, v1}, Lb/w/a;-><init>(I)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;JI)Lb/w/p;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Lh/f/b/j;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lc/c/a/n/p/l$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lc/c/a/n/p/l$a;-><init>(Ljava/lang/String;JI)V

    return-object v0
.end method
