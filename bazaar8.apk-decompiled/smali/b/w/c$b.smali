.class public final Lb/w/c$b;
.super Ljava/lang/Object;
.source "ActivityNavigator.java"

# interfaces
.implements Lb/w/K$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/w/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Lb/i/a/d;


# virtual methods
.method public a()Lb/i/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/w/c$b;->b:Lb/i/a/d;

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Lb/w/c$b;->a:I

    return v0
.end method
