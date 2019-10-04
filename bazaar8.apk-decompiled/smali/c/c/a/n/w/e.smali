.class public final synthetic Lc/c/a/n/w/e;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->values()[Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lc/c/a/n/w/e;->a:[I

    sget-object v0, Lc/c/a/n/w/e;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->PREDICTION_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v0, Lc/c/a/n/w/e;->a:[I

    sget-object v1, Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;->SHOWING_RESULT:Lcom/farsitel/bazaar/ui/search/SearchFragment$SearchViewMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    return-void
.end method
