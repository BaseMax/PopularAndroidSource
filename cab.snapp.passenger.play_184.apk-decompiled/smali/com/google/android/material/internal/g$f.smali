.class final Lcom/google/android/material/internal/g$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/material/internal/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field a:Z

.field private final b:Landroidx/appcompat/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Landroidx/appcompat/view/menu/MenuItemImpl;)V
    .locals 0

    .line 653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p1, p0, Lcom/google/android/material/internal/g$f;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-void
.end method


# virtual methods
.method public final getMenuItem()Landroidx/appcompat/view/menu/MenuItemImpl;
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/google/android/material/internal/g$f;->b:Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v0
.end method
