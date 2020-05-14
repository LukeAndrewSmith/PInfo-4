package api.rest;



import javax.enterprise.context.ApplicationScoped;
import javax.inject.Inject;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import java.util.List;
import java.util.Set;

import api.msg.ChallengeProducer;
import domain.model.Challenge;
import domain.model.Ingredient;
import domain.model.Recipe;
import domain.service.ChallengeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;


@ApplicationScoped
@Path("/challenge")
@Api(value = "challenge", authorizations = {
	      @Authorization(value="sampleoauth", scopes = {})
	    })
public class ChallengeRestService {

	@Inject
	private ChallengeService challengeService;
	@Inject
	private ChallengeProducer challengeProducer;
	
	// Tested
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get all the challenges")
   
	public List<Challenge> getAll() {
		return challengeService.getAll();
	}

	// Tested
	@GET
	@Path("/count")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a the count of challenge")
    public Long count() {
		return challengeService.count();
	}
	
	// Tested
	@GET
	@Path("{id}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a specifc challenge")
	public Challenge get(@PathParam("id") Long challengeId) {
		return challengeService.get(challengeId);
	}
	
	//Tested
	@GET
	@Path("/ingredients/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "get the set of ingredientsId of a challenge")
	public Set<Ingredient> getIngredients(@PathParam("id") Long challengeId) {
		return challengeService.get(challengeId).getIngredients();
	}
	//Tested
	@GET
	@Path("/solutions/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "get the set of recideId of a challenge")
	public Set<Recipe> getSolutions(@PathParam("id") Long challengeId) {
		return challengeService.get(challengeId).getSolutions();
	}
	//Tested
	@GET
	@Path("/name/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a specifc challenge name")
	public String getName(@PathParam("id") Long challengeId) {
		return challengeService.get(challengeId).getName();
	}
	//Tested
	@GET
	@Path("/author/{id}")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Get a specifc challenge name")
	public Long getAuthor(@PathParam("id") Long challengeId) {
		return challengeService.get(challengeId).getAuthorID();
	}
	
	@PUT
	@Path("/add/{id}/{solution}")
	@ApiOperation(value ="Update recipeId list")
	public void addSolution(@PathParam("id") long challengeId, @PathParam("solution") long recipeId) {
		challengeService.addSolution(challengeId, recipeId);
		
	}

	@PUT
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Update a given challenge")
	public void update(Challenge challenge) {
		challengeService.update(challenge);
		challengeProducer.send(challenge);
	}

	@POST
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Create a new challenge")
	public void create(Challenge challenge) {
		challengeService.create(challenge);
		challengeProducer.send(challenge);
	}

	
	@POST
	@Path("propagateAllChallenges")
	@Produces(MediaType.APPLICATION_JSON)
	@ApiOperation(value = "Propagate all challenges to the bus to sync up downstream services")
	public void propagateAllChallenges() {
		challengeProducer.sendAllChallenges();
	}
	
	@DELETE
	@Path("/delete/{id}")
	@Consumes(MediaType.APPLICATION_JSON)
	@ApiOperation(value= "Remove a Challenge")
	public void removeChallengeById(@PathParam("id") long id) {
		challengeService.removeChallenge(id);
	}
}