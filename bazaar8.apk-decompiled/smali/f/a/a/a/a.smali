.class public Lf/a/a/a/a;
.super Ljava/lang/Object;
.source "DependentTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lf/a/a/a/b;


# direct methods
.method public constructor <init>(Lf/a/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/a/a/a/a;->a:Lf/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lf/a/a/a/a;->a:Lf/a/a/a/b;

    invoke-virtual {v0}, Lf/a/a/a/b;->a()V

    return-void
.end method
