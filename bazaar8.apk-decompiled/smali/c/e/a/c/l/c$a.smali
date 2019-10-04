.class public Lc/e/a/c/l/c$a;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "CircularBorderDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/e/a/c/l/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Lc/e/a/c/l/c;


# direct methods
.method public constructor <init>(Lc/e/a/c/l/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/e/a/c/l/c$a;->a:Lc/e/a/c/l/c;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lc/e/a/c/l/c;Lc/e/a/c/l/b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/e/a/c/l/c$a;-><init>(Lc/e/a/c/l/c;)V

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/e/a/c/l/c$a;->a:Lc/e/a/c/l/c;

    return-object v0
.end method
