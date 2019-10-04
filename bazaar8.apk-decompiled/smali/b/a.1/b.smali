.class public Lb/a/b;
.super Ljava/lang/Object;
.source "ComponentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/a/c;


# direct methods
.method public constructor <init>(Lb/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b;->a:Lb/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b;->a:Lb/a/c;

    invoke-static {v0}, Lb/a/c;->a(Lb/a/c;)V

    return-void
.end method
