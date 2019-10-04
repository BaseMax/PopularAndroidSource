.class public Lc/e/a/a/c/h;
.super Ljava/lang/Thread;
.source "SimpleDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/e/a/a/c/i;-><init>([Lc/e/a/a/c/f;[Lc/e/a/a/c/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/a/c/i;


# direct methods
.method public constructor <init>(Lc/e/a/a/c/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/a/c/h;->a:Lc/e/a/a/c/i;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/a/c/h;->a:Lc/e/a/a/c/i;

    invoke-static {v0}, Lc/e/a/a/c/i;->a(Lc/e/a/a/c/i;)V

    return-void
.end method
