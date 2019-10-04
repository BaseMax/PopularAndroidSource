.class public Lc/e/a/a/e/e/l$a;
.super Ljava/lang/Object;
.source "PsshAtomUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/e/e/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/UUID;

.field public final b:I

.field public final c:[B


# direct methods
.method public constructor <init>(Ljava/util/UUID;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/e/a/a/e/e/l$a;->a:Ljava/util/UUID;

    .line 3
    iput p2, p0, Lc/e/a/a/e/e/l$a;->b:I

    .line 4
    iput-object p3, p0, Lc/e/a/a/e/e/l$a;->c:[B

    return-void
.end method

.method public static synthetic a(Lc/e/a/a/e/e/l$a;)Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/e/a/a/e/e/l$a;->a:Ljava/util/UUID;

    return-object p0
.end method
