.class Landroidx/navigation/fragment/FragmentNavigator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/fragment/app/FragmentManager$OnBackStackChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/fragment/FragmentNavigator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/fragment/FragmentNavigator;


# direct methods
.method constructor <init>(Landroidx/navigation/fragment/FragmentNavigator;)V
    .locals 0

    .line 89
    iput-object p1, p0, Landroidx/navigation/fragment/FragmentNavigator$1;->this$0:Landroidx/navigation/fragment/FragmentNavigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackStackChanged()V
    .locals 2

    .line 95
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator$1;->this$0:Landroidx/navigation/fragment/FragmentNavigator;

    iget-boolean v0, v0, Landroidx/navigation/fragment/FragmentNavigator;->mIsPendingBackStackOperation:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator$1;->this$0:Landroidx/navigation/fragment/FragmentNavigator;

    invoke-virtual {v0}, Landroidx/navigation/fragment/FragmentNavigator;->isBackStackEqual()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Landroidx/navigation/fragment/FragmentNavigator;->mIsPendingBackStackOperation:Z

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator$1;->this$0:Landroidx/navigation/fragment/FragmentNavigator;

    iget-object v0, v0, Landroidx/navigation/fragment/FragmentNavigator;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 103
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator$1;->this$0:Landroidx/navigation/fragment/FragmentNavigator;

    iget-object v1, v1, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 105
    :goto_0
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator$1;->this$0:Landroidx/navigation/fragment/FragmentNavigator;

    iget-object v1, v1, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->size()I

    move-result v1

    if-le v1, v0, :cond_1

    .line 106
    iget-object v1, p0, Landroidx/navigation/fragment/FragmentNavigator$1;->this$0:Landroidx/navigation/fragment/FragmentNavigator;

    iget-object v1, v1, Landroidx/navigation/fragment/FragmentNavigator;->mBackStack:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Landroidx/navigation/fragment/FragmentNavigator$1;->this$0:Landroidx/navigation/fragment/FragmentNavigator;

    invoke-virtual {v0}, Landroidx/navigation/fragment/FragmentNavigator;->dispatchOnNavigatorBackPress()V

    :cond_2
    return-void
.end method
