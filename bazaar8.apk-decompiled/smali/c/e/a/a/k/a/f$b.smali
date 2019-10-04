.class public final Lc/e/a/a/k/a/f$b;
.super Lc/e/a/a/k/j;
.source "CeaDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/a/k/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field public final synthetic f:Lc/e/a/a/k/a/f;


# direct methods
.method public constructor <init>(Lc/e/a/a/k/a/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/k/a/f$b;->f:Lc/e/a/a/k/a/f;

    invoke-direct {p0}, Lc/e/a/a/k/j;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/a/k/a/f;Lc/e/a/a/k/a/e;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/a/k/a/f$b;-><init>(Lc/e/a/a/k/a/f;)V

    return-void
.end method


# virtual methods
.method public final k()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/k/a/f$b;->f:Lc/e/a/a/k/a/f;

    invoke-virtual {v0, p0}, Lc/e/a/a/k/a/f;->a(Lc/e/a/a/k/j;)V

    return-void
.end method
