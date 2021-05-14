.class public Lcom/google/android/material/snackbar/e;
.super Landroid/widget/FrameLayout;
.source ""


# instance fields
.field private final a:Landroid/view/accessibility/AccessibilityManager;

.field private final b:La/g/i/a/b$a;

.field private c:Lcom/google/android/material/snackbar/c;

.field private d:Lcom/google/android/material/snackbar/b;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/snackbar/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v0, Lb/a/a/a/i;->SnackbarLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    sget v0, Lb/a/a/a/i;->SnackbarLayout_elevation:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lb/a/a/a/i;->SnackbarLayout_elevation:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    int-to-float v0, v0

    invoke-static {p0, v0}, La/g/i/s;->a(Landroid/view/View;F)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/material/snackbar/e;->a:Landroid/view/accessibility/AccessibilityManager;

    new-instance p1, Lcom/google/android/material/snackbar/d;

    invoke-direct {p1, p0}, Lcom/google/android/material/snackbar/d;-><init>(Lcom/google/android/material/snackbar/e;)V

    iput-object p1, p0, Lcom/google/android/material/snackbar/e;->b:La/g/i/a/b$a;

    iget-object p1, p0, Lcom/google/android/material/snackbar/e;->a:Landroid/view/accessibility/AccessibilityManager;

    iget-object p2, p0, Lcom/google/android/material/snackbar/e;->b:La/g/i/a/b$a;

    invoke-static {p1, p2}, La/g/i/a/b;->a(Landroid/view/accessibility/AccessibilityManager;La/g/i/a/b$a;)Z

    iget-object p1, p0, Lcom/google/android/material/snackbar/e;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/e;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/material/snackbar/e;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/material/snackbar/e;->setClickableOrFocusableBasedOnAccessibility(Z)V

    return-void
.end method

.method private setClickableOrFocusableBasedOnAccessibility(Z)V
    .locals 1

    xor-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->d:Lcom/google/android/material/snackbar/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/b;->onViewAttachedToWindow(Landroid/view/View;)V

    :cond_0
    invoke-static {p0}, La/g/i/s;->A(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->d:Lcom/google/android/material/snackbar/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/material/snackbar/b;->onViewDetachedFromWindow(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->a:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Lcom/google/android/material/snackbar/e;->b:La/g/i/a/b$a;

    invoke-static {v0, v1}, La/g/i/a/b;->b(Landroid/view/accessibility/AccessibilityManager;La/g/i/a/b$a;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/c;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/material/snackbar/c;->a(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method

.method setOnAttachStateChangeListener(Lcom/google/android/material/snackbar/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/e;->d:Lcom/google/android/material/snackbar/b;

    return-void
.end method

.method setOnLayoutChangeListener(Lcom/google/android/material/snackbar/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/snackbar/e;->c:Lcom/google/android/material/snackbar/c;

    return-void
.end method
