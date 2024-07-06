<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

	<%@ include file="Sidebar.jsp" %>
		<!DOCTYPE html>
		<html>

		<head>
			<meta charset="UTF-8">
			<title>Add new Product</title>
		</head>

		<body>
			<div class="content-wrapper">
				<section class="content">
					<div class="container-fluid" style="margin-top: 2%;">
						<div class="row">
							<!-- left column -->
							<div class="col-md-12">
								<!-- general form elements -->
								<div class="card card-primary">
									<div class="card-header">
										<h3 class="card-title">Add new Animal</h3>
									</div>
									<!-- /.card-header -->
									<!-- form start -->
									<form action="AddNewProductServelet" method="post">
										<div class="card-body">
											<div class="row">
												<div class="col-sm-6">
													<div class="form-group">
														<label>Name of breed </label> <input type="text"
															class="form-control" placeholder="Enter breed name"
															name="pName" required>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form-group">
														<label>Category </label> <input type="text" class="form-control"
															placeholder="category" name="category" required>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-6">
													<div class="form-group">
														<label>Price</label> <input type="text" class="form-control"
															placeholder="MRP" name="pMRP" required>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form-group">
														<label>Quantity</label> <input type="text" class="form-control"
															placeholder="Product Quantity" name="pQuantity" required>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-6">
													<div class="form-group">
														<label>first Image URL</label> <input type="text"
															class="form-control" placeholder="Product image"
															name="pimg1" required>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form-group">
														<label>Second image URL</label> <input type="text"
															class="form-control" placeholder="Product image"
															name="pimg2" required>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-6">
													<div class="form-group">
														<label>Food</label> <input type="text" class="form-control"
															placeholder="Enter food" name="pFood" required>
													</div>
												</div>
												<div class="col-sm-6">
													<div class="form-group">
														<label>Sub Category</label> <input type="text"
															class="form-control" placeholder="Enter Sub Category"
															name="psub" required>
													</div>
												</div>
											</div>
											<div class="form-group">
												<label>Purchase Date</label> <input type="date" class="form-control"
													placeholder="Purchase Date" name="pDate" required>
											</div>

										</div>
										<div class="card-footer">
											<button type="submit" class="btn btn-primary">Save</button>
											<button type="reset" class="btn btn-danger ">Cancel</button>
										</div>
									</form>
								</div>
								<!-- /.card -->

								<!-- general form elements -->

							</div>
							<!--/.col (right) -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</section>


			</div>
			<%@ include file="dashbordFooter.jsp" %>
		</body>

		</html>