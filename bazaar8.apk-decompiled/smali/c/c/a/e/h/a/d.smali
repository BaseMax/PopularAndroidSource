.class public Lc/c/a/e/h/a/d;
.super Lk/k;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/e/h/a/c$b;-><init>(Lj/a/a/h$c;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lj/a/a/h$c;

.field public final synthetic c:Lc/c/a/e/h/a/c$b;


# direct methods
.method public constructor <init>(Lc/c/a/e/h/a/c$b;Lk/z;Lj/a/a/h$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/e/h/a/d;->c:Lc/c/a/e/h/a/c$b;

    iput-object p3, p0, Lc/c/a/e/h/a/d;->b:Lj/a/a/h$c;

    invoke-direct {p0, p2}, Lk/k;-><init>(Lk/z;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/c/a/e/h/a/d;->b:Lj/a/a/h$c;

    invoke-virtual {v0}, Lj/a/a/h$c;->close()V

    .line 2
    invoke-super {p0}, Lk/k;->close()V

    return-void
.end method