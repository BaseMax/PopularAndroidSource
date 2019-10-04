.class public Lc/b/a/m;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/b/a/n;->a(Lc/b/a/g/a/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lc/b/a/g/a/h;

.field public final synthetic b:Lc/b/a/n;


# direct methods
.method public constructor <init>(Lc/b/a/n;Lc/b/a/g/a/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/b/a/m;->b:Lc/b/a/n;

    iput-object p2, p0, Lc/b/a/m;->a:Lc/b/a/g/a/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/m;->b:Lc/b/a/n;

    iget-object v1, p0, Lc/b/a/m;->a:Lc/b/a/g/a/h;

    invoke-virtual {v0, v1}, Lc/b/a/n;->a(Lc/b/a/g/a/h;)V

    return-void
.end method
