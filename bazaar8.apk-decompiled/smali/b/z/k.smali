.class public Lb/z/k;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/z/l;->a([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:[Ljava/lang/String;

.field public final synthetic b:Lb/z/l;


# direct methods
.method public constructor <init>(Lb/z/l;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/z/k;->b:Lb/z/l;

    iput-object p2, p0, Lb/z/k;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/z/k;->b:Lb/z/l;

    iget-object v0, v0, Lb/z/l;->a:Lb/z/r;

    iget-object v0, v0, Lb/z/r;->d:Lb/z/j;

    iget-object v1, p0, Lb/z/k;->a:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/z/j;->a([Ljava/lang/String;)V

    return-void
.end method
