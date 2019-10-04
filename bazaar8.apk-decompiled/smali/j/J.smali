.class public Lj/J;
.super Lk/c;
.source "RealCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj/K;-><init>(Lj/I;Lj/L;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic k:Lj/K;


# direct methods
.method public constructor <init>(Lj/K;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lj/J;->k:Lj/K;

    invoke-direct {p0}, Lk/c;-><init>()V

    return-void
.end method


# virtual methods
.method public j()V
    .locals 1

    .line 1
    iget-object v0, p0, Lj/J;->k:Lj/K;

    invoke-virtual {v0}, Lj/K;->cancel()V

    return-void
.end method
