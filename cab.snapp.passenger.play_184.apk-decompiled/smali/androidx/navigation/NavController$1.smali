.class Landroidx/navigation/NavController$1;
.super Landroidx/navigation/NavigatorProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/navigation/NavController;


# direct methods
.method constructor <init>(Landroidx/navigation/NavController;)V
    .locals 0

    .line 83
    iput-object p1, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    invoke-direct {p0}, Landroidx/navigation/NavigatorProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;)",
            "Landroidx/navigation/Navigator<",
            "+",
            "Landroidx/navigation/NavDestination;",
            ">;"
        }
    .end annotation

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/navigation/NavigatorProvider;->addNavigator(Ljava/lang/String;Landroidx/navigation/Navigator;)Landroidx/navigation/Navigator;

    move-result-object p1

    if-eq p1, p2, :cond_1

    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    iget-object v0, v0, Landroidx/navigation/NavController;->mOnBackPressListener:Landroidx/navigation/Navigator$OnNavigatorBackPressListener;

    invoke-virtual {p1, v0}, Landroidx/navigation/Navigator;->removeOnNavigatorBackPressListener(Landroidx/navigation/Navigator$OnNavigatorBackPressListener;)V

    .line 94
    :cond_0
    iget-object v0, p0, Landroidx/navigation/NavController$1;->this$0:Landroidx/navigation/NavController;

    iget-object v0, v0, Landroidx/navigation/NavController;->mOnBackPressListener:Landroidx/navigation/Navigator$OnNavigatorBackPressListener;

    invoke-virtual {p2, v0}, Landroidx/navigation/Navigator;->addOnNavigatorBackPressListener(Landroidx/navigation/Navigator$OnNavigatorBackPressListener;)V

    :cond_1
    return-object p1
.end method
